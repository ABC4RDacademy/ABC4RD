const hre = require("hardhat");

async function main() {
  const contractAddress = process.argv[2];

  if (!contractAddress) {
    throw new Error("Usage: npm run check:local -- 0xYourContractAddress");
  }

  const [deployer, learner] = await hre.ethers.getSigners();
  const token = await hre.ethers.getContractAt("ABC4RDLearnToken", contractAddress);
  const amount = hre.ethers.parseUnits("25", 18);

  const tx = await token.connect(deployer).transfer(learner.address, amount);
  await tx.wait();

  const deployerBalance = await token.balanceOf(deployer.address);
  const learnerBalance = await token.balanceOf(learner.address);

  console.log("Transfer complete");
  console.log("Contract:", contractAddress);
  console.log("Deployer balance:", hre.ethers.formatUnits(deployerBalance, 18), "A4L");
  console.log("Learner balance:", hre.ethers.formatUnits(learnerBalance, 18), "A4L");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
