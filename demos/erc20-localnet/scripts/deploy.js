const hre = require("hardhat");

async function main() {
  const [deployer, learner] = await hre.ethers.getSigners();
  const initialSupply = hre.ethers.parseUnits("1000", 18);
  const Token = await hre.ethers.getContractFactory("ABC4RDLearnToken");
  const token = await Token.deploy(initialSupply);

  await token.waitForDeployment();

  console.log("ABC4RDLearnToken deployed");
  console.log("Contract:", await token.getAddress());
  console.log("Deployer:", deployer.address);
  console.log("Learner account:", learner.address);
  console.log("Total supply:", hre.ethers.formatUnits(await token.totalSupply(), 18), "A4L");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
