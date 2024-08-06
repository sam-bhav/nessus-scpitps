import subprocess

def exec_curl(url):
# call curl command
    result=subprocess.run(['curl', url], capture_output=True, text=True)

    # print the result
    print('Return Code', result.returncode)
    print('Output', result.stdout)
    print('Error', result.stderr)

    