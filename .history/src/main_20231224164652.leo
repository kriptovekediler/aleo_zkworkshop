// The 'templateankara' program.
program templateankara.aleo {

    mapping account: address => u64;

    record token {
        owner:address,

        amount: u64
    }

    transition mint_public(public receiver: address, public amount: u64) {

        return then finalize(receiver, amount);
    }

    finalize mint_public(public receiver:address, amount: u64)  {}
}
