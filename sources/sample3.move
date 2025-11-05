address rup_addr {

    module one {

        friend rup_addr::two;
        friend rup_addr::three;

        public(friend) fun get_value(): u64 {
            return 100
        }
        
    }

    module two {
        // use rup_addr::one::get_value;

        use std::debug::print;

        #[test]
        fun test_get_value() {
            // let val = get_value();
            let val = rup_addr::one::get_value();
            print(&val);
        }

    }

    module three {
        use std::debug::print;

        #[test]
        fun test_get_value() {
            // let val = get_value();
            let val = rup_addr::one::get_value();
            print(&val);
        }

    }
}