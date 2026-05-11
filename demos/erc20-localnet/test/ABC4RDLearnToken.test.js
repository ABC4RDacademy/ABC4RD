const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("ABC4RDLearnToken", function () {
  it("assigns the initial supply to the deployer", async function () {
    const [deployer] = await ethers.getSigners();
    const supply = ethers.parseUnits("1000", 18);
    const Token = await ethers.getContractFactory("ABC4RDLearnToken");
    const token = await Token.deploy(supply);

    expect(await token.balanceOf(deployer.address)).to.equal(supply);
    expect(await token.totalSupply()).to.equal(supply);
  });

  it("transfers demo tokens between local accounts", async function () {
    const [deployer, learner] = await ethers.getSigners();
    const supply = ethers.parseUnits("1000", 18);
    const amount = ethers.parseUnits("25", 18);
    const Token = await ethers.getContractFactory("ABC4RDLearnToken");
    const token = await Token.deploy(supply);

    await expect(token.transfer(learner.address, amount))
      .to.emit(token, "Transfer")
      .withArgs(deployer.address, learner.address, amount);

    expect(await token.balanceOf(learner.address)).to.equal(amount);
  });
});
