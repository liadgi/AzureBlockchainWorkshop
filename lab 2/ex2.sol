contract StateHolder {
    address public owner;
    uint public openNumber;
    string public openString;
    string public myString;
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function StateHolder() {
        owner = msg.sender;
    }

    function changeOpenNumber(uint _newNumber) {
        openNumber = _newNumber;
    }

    function changeOpenString(string _newString) {
        openString = _newString;
    }

    function changeMyString(string _newString) onlyOwner {
        myString = _newString;
    }
}