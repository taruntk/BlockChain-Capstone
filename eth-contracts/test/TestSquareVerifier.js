var Verifier = artifacts.require('Verifier');

var verifierProof = require('../../zokrates/code/square/proof.json');


contract('Test Verifier', accounts => {

    const account_one = accounts[0];
    const account_two = accounts[1];

    describe('Verifier', function () {
        beforeEach(async function () {
            this.contract = await Verifier.new();

        })
        
        
        it('Test verification with correct proof', async function () {
            let result = await this.contract.verifyTx(verifierProof.proof.a, verifierProof.proof.b,
                verifierProof.proof.c, verifierProof.inputs, { from: account_one });
            assert.equal(result, true, "Verification fails");
        })

        it('Test verification with incorrect proof', async function () {
            let result = await this.contract.verifyTx(verifierProof.proof.c, verifierProof.proof.b,
                verifierProof.proof.c, verifierProof.inputs, { from: account_one });
            assert.equal(result, false, "Verification should fail");
        })

    });
})
