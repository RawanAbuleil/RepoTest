#!/bin/bash

# Check if the logtest.log file exists
if [ ! -f "logtest.log" ]; then
  echo "logtest.log file not found."
  exit 1
fi

# Append the new row to the logtest.log file
echo "$(date +%Y-%m-%d\ %H:%M:%S.%N) - Repo Folder Created" >> logtest.log

echo "New row added to logtest.log."
#!/bin/bash

# Check if the logtest.log file exists
if [ ! -f "logtest.log" ]; then
  echo "logtest.log file not found."
  exit 1
fi

# Assign the URL to a variable
url="$1"

# Append the new row to the logtest.log file
echo "$(date +%Y-%m-%d\ %H:%M:%S.%N) - $url downloaded" >> logtest.log

echo "New row added to logtest.log. 2"
