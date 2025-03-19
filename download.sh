#!/bin/bash
if [ "${INSTALL_DIR}" = "l4d2" ]; then
  # https://github.com/ValveSoftware/steam-for-linux/issues/11522
  echo """force_install_dir "/home/louis/${INSTALL_DIR}"
  login anonymous
  @sSteamCmdForcePlatformType windows
  app_update ${GAME_ID}
  @sSteamCmdForcePlatformType linux
  app_update ${GAME_ID} validate
  quit""" > first-install-l4d2.txt
  ./steamcmd.sh +runscript first-install-l4d2.txt
elif [ "${INSTALL_DIR}" = "l4d" ]; then
  ./steamcmd.sh +runscript update.txt
else
    exit 100
fi