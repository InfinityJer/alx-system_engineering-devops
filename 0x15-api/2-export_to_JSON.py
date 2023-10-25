#!/usr/bin/python3
"""
Gather data from an API and export to JSON
"""
import json
import requests
import sys


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: 2-export_to_JSON.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])

    base_url = 'https://jsonplaceholder.typicode.com'
    user_response = requests.get(f'{base_url}/users/{employee_id}')
    todos_response = requests.get(f'{base_url}/todos?userId={employee_id}')

    try:
        employee_name = user_response.json().get('username')
        todos = todos_response.json()
        data = {employee_id: []}

        for task in todos:
            data[employee_id].append({
                "task": task.get('title'),
                "completed": task.get('completed'),
                "username": employee_name
            })

        with open(f"{employee_id}.json", mode="w") as file:
            json.dump(data, file)

    except Exception as e:
        print(f"Error: {e}")
