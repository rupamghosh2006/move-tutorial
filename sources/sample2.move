module rup_addr::Sample2{

    const MY_ADDR: address = @rup_addr;

    // fun confirm_value(number: u64): bool {
    //     if (number > 0) {
    //         true
    //     } else {
    //         false
    //     }
    // }

    fun confirm_value(choice: bool): (u64, bool) {
        if (choice) 
            return (1, choice)
        else 
            return (0, choice)
    }


    use std::debug::print;

    #[test]
    fun test_function() {
        print(&MY_ADDR);
        // let result = confirm_value(10);
        // print(&result);
        let (number, choice) = confirm_value(true);
        print(&number);
        print(&choice);
    }
}