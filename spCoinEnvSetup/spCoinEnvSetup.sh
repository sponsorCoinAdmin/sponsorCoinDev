# Requires git setup
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
