import requests

def check_website():
    url = "http://clubciber.es"

    try:
        response = requests.get(url)

        if response.status_code == 200:
            result = "Success"
        else:
            result = f"Failed with status code {response.status_code}"

    except requests.exceptions.RequestException as e:
        result = f"Error: {str(e)}"

    with open("website_status.txt", "a") as file:
        file.write(f"Check result for {url}: {result}\n")

check_website()
