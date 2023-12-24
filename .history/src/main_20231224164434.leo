// The 'templateankara' program.
program templateankara.aleo {

    mapping account: address => u64;

    record {
        owner:address,

        amount: u64
    }

    transition mint(public receiver: address, amount: u64) {
        
    }
    
}
