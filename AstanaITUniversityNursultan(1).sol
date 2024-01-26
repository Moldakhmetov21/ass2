// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;



import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract AstanaITUniversityNursultan is ERC20
{
    address public admin;
     uint256 private lastTransactionTimestamp;

    constructor() ERC20('AstanaITUniversityNursultan', 'MTN')
    {
        _mint(msg.sender, 10000 * 10 **18 );
        admin = msg.sender;
    }

    function toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    function mint(address to, uint amount) external 
    {
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }

    function burn(uint amount) external 
    {
        _burn(msg.sender, amount);
    }

     function getLastTransactionTimestamp() public view returns (string memory) {
        return formatTimestamp(lastTransactionTimestamp);
    }

    function getTransactionSender() public view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiver() public view returns (address) {
        return tx.origin;
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        lastTransactionTimestamp = block.timestamp;
        super.transfer(recipient, amount);
        return true;
    }

    function formatTimestamp(uint256 timestamp) internal pure returns (string memory) {
        return toString(timestamp); // Convert timestamp to a human-readable string
    }

    
}