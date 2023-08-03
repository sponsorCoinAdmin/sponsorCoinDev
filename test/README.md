# dev-contracts-spCoin

// TESTING PLACEHOLDER FOR TESTS

NOTE: This is the leader page for sponsorCoin setup

Step 1. Set the environment variable $SPONSOR_COIN_DIR = sponsorCoinDev.

Step 2. Download the Git Repository Code As Follows:
    git clone --recurse-submodules git@github.com:sponsorCoinAdmin/$SPONSOR_COIN_DIR.git
    Note:
    This Cloning downloads the master test app along with 3 sponsorCoin submodule git repositories.
        1.1 contracts ~ List of contracts to be deployed
        1.2 spCoinProdModule ~ A library for access to sponsorCoin crypto method calls.
        1.3 spCoinTestModule ~ A library for sponsorCoin test method calls
Step 2. cd in directory $SPONSOR_COIN_DIR and install the npm libraries as follows:
    cd $SPONSOR_COIN_DIR
    echo "Installing the Node Libraries"
    npm i
echo "Configuring SponsorCoin Environment"
export SPONSOR_COIN_HOME=$SPONSOR_COIN_ROOT_DIR/$SPONSOR_COIN_DIR
export SPONSOR_COIN_ENV=$SPONSOR_COIN_HOME/$SPONSOR_COIN_DEV_DIR
export SPONSOR_COIN_LOGS=$SPONSOR_COIN_ENV/logs

echo "Adding startup configuration Files to Sponsor Coin environment setup file $SPONSOR_COIN_ENV/.e"
echo "export SPONSOR_COIN_HOME=$SPONSOR_COIN_HOME" | tee -a $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_ENV=$SPONSOR_COIN_ENV" | tee -a $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_LOGX=$SPONSOR_COIN_LOGS" | tee -a $SPONSOR_COIN_ENV/.e

echo "Adding sponsor coin startup configuration Files to bootstrap file ~/.baschrc"
echo ". "$SPONSOR_COIN_ENV"/.e" | tee -a ~/.bashrc
. $SPONSOR_COIN_ENV/.e
echo "***IMPORTANT *** Please ensure the '.env' file is configured for proper operations"
