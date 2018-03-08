#!/usr/bin/env bash

launchctl unload /Library/LaunchAgents/com.symless.synergy.synergy-service.plist
killall -9 synergy-core > /dev/null
launchctl load /Library/LaunchAgents/com.symless.synergy.synergy-service.plist

