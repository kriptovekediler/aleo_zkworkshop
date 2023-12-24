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

    finalize mint_public(public receiver:address, amount: u64)  {
        let receiver_amount: u64 = Mapping::gett_or_use(account,receiver ,0u64);
    }
}
