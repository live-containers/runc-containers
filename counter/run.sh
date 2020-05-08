#!/bin/bash
sudo runc run -d counter &> /dev/null < /dev/null
sudo runc list
