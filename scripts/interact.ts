import { Hash } from "crypto";
import { ethers } from "hardhat";

async function main() {
  const UserBlogAddress = "0xc706fd4074E5926765BA355d417c849f56456497";

  const UserBlogContract = await ethers.getContractAt("IUserBlog", UserBlogAddress);
    

  const name= "Eden";
  const Blogtitle= "Life";
  const author="CaveDev";
  const posts="Life is a journey of truth";

    const UserTx = await UserBlogContract.NewUser(name,Blogtitle,author,posts);
    await UserTx.wait();

    console.log("Amount saved in contract: ", UserTx);


    // Transaction Hash
    // 0x5bedf6e20a4cf38a212af722fec58aca3369506f938f5997014b9411403c5cb8
  
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
