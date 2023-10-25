#!/usr/bin/python3
"""
Gather data from an API and export to CSV
"""
import csv
import requests
import sys


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: 1-export_to_CSV.py <employee_id>")
        sys.exit(1)

    employee_id = int(sys.argv[1])

    base_url = 'https://jsonplaceholder.typicode.com'
    user_response = requests.get(f'{base_url}/users/{employee_id}')
    todos_response = requests.get(f'{base_url}/todos?userId={employee_id}')

    try:
        employee_name = user_response.json().get('username')
        todos = todos_response.json()

        with open(f"{employee_id}.csv", mode="w", newline='') as file:
            writer = csv.writer(file, quoting=csv.QUOTE_ALL)
            for task in todos:
                writer.writerow([employee_id, employee_name,
                                 task.get('completed'), task.get('title')])

    except Exception as e:
        print(f"Error: {e}")
