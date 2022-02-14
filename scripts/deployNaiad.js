const hre = require("hardhat");

async function main() {

  const NaiadToken = await ethers.getContractFactory("NaiadWaterInvestmentCoin");
  const naiadToken = await NaiadToken.deploy();

  console.log(" deployed to: ", naiadToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });