#!/usr/bin/env python3

import requests

url = 'http://wisecow.vvdinfo.xyz'

try:
    response = requests.get(url)
    if response.status_code == 200:
        print('Application is up')
    else:
        print(f'Application is down, status code: {response.status_code}')
except requests.exceptions.RequestException as e:
    print(f'Application is down, error: {e}')
