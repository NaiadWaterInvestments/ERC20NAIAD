// contracts/NaiadWaterInvestmentCoin.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NaiadWaterInvestmentCoin is ERC20 {

    address public publicSaleWallet;
    address public teamWallet;
    address public marketingCommunityWallet;
    address public strategicPartnersWallet;
    address public privatePresaleWallet;
    address public liquidityWallet;

    constructor() ERC20("Naiad Water Investment Coin", "NAIAD") {

        uint256 MAX = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

        publicSaleWallet = 0x0ce5BD06d3BFc2a25D5407980d06e6E0e23F29F0;
        _mint(publicSaleWallet, 600_000_000 * 10 ** 18);

        teamWallet = 0x8D9156f06F73218CAF72D31b41C69eAD3494E1b9;
        _mint(teamWallet, 400_000_000 * 10 ** 18);
        _approve(teamWallet, publicSaleWallet, MAX);

        marketingCommunityWallet = 0xE3A1b5e14eFa498D5A27A3A25eA8a369461688ab;
        _mint(marketingCommunityWallet, 200_000_000 * 10 ** 18);
        _approve(marketingCommunityWallet, publicSaleWallet, MAX);

        strategicPartnersWallet = 0xc4f9Ac0eD4685436Cd5B7e86cE8DB81513286fb6;
        _mint(strategicPartnersWallet, 200_000_000 * 10 ** 18);
        _approve(strategicPartnersWallet, publicSaleWallet, MAX);

        privatePresaleWallet = 0x7C3ACe096Ae020c8E11da521a51F309246bB8C7D;
        _mint(privatePresaleWallet, 400_000_000 * 10 ** 18);
        _approve(privatePresaleWallet, publicSaleWallet, MAX);

        liquidityWallet = 0x9030516CCa725094532C00cc6cD809d566236B66;
        _mint(liquidityWallet, 200_000_000 * 10 ** 18);
        _approve(liquidityWallet, publicSaleWallet, MAX);

    }

}