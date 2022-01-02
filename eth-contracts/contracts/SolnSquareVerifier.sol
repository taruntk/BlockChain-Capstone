pragma solidity >=0.4.21 <0.6.0;

import "./ERC721Mintable.sol";
import "./verifier.sol";

contract SolnSquareVerifier is ERC721Mintable {
    using Pairing for *;

    Verifier private verifierContract;

    constructor(
        address verifierAddress,
        string memory name,
        string memory symbol
    ) public ERC721Mintable(name, symbol) {
        verifierContract = Verifier(verifierAddress);
    }

    struct Solution {
        bool isRegistered;
        uint256 id;
        address from;
        bool isMinted;
    }

    Solution[] private solutions;

    mapping(bytes32 => Solution) private uniqueSolutions;

    event AddedSolution(address from);
    event MintedSolution(uint256 id, address from);

    function addSolution(
        uint256[2] memory a,
        uint256[2][2] memory b,
        uint256[2] memory c,
        uint256[2] memory inputs
    ) public {
        bytes32 hashedSolution = keccak256(
            abi.encodePacked(inputs[0], inputs[1])
        );
        require(
            !uniqueSolutions[hashedSolution].isRegistered,
            "Solution was added"
        );

        require(
            verifierContract.verifyTx(a, b, c, inputs),
            "Solution was verified fail"
        );

        Solution memory sol = Solution(
            true,
            solutions.length,
            msg.sender,
            false
        );
        uniqueSolutions[hashedSolution] = sol;
        solutions.push(sol);

        emit AddedSolution(sol.from);
    }

    function mintNewNFT(uint256[2] calldata inputs, address to) external {
        bytes32 hashedInput = keccak256(abi.encodePacked(inputs[0], inputs[1]));

        Solution storage sol = uniqueSolutions[hashedInput];
        require(sol.from != address(0x0), "Solution Not Exist");
        require(!sol.isMinted, "Solution Was Minted");
        require(sol.from == msg.sender, "You did not create this solution");
        sol.isMinted = true;
        super._mint(to, sol.id);
        setTokenURI(sol.id);
        emit MintedSolution(sol.id, sol.from);
    }
}