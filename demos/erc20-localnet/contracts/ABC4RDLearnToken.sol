// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ABC4RDLearnToken {
    string public name = "ABC4RD LearnToken";
    string public symbol = "A4L";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
        emit Transfer(address(0), msg.sender, initialSupply);
    }

    function transfer(address to, uint256 value) external returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        uint256 currentAllowance = allowance[from][msg.sender];
        require(currentAllowance >= value, "ERC20: insufficient allowance");

        unchecked {
            allowance[from][msg.sender] = currentAllowance - value;
        }

        _transfer(from, to, value);
        return true;
    }

    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0), "ERC20: transfer to zero address");
        require(balanceOf[from] >= value, "ERC20: transfer amount exceeds balance");

        unchecked {
            balanceOf[from] -= value;
            balanceOf[to] += value;
        }

        emit Transfer(from, to, value);
    }
}
