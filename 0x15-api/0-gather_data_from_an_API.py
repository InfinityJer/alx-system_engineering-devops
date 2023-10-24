#!/usr/bin/python3
"""
Gather data from an API
"""
import requests
import sys


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: 0-gather_data_from_an_API.py <employee_id>")
        sys.exit(1)

    employee_id = sys.argv[1]
    base_url = 'https://jsonplaceholder.typicode.com'

    user_response = requests.get(f'{base_url}/users/{employee_id}')
    todos_response = requests.get(f'{base_url}/todos?userId={employee_id}')

    try:
        employee_name = user_response.json()[0].get('name')
        todos = todos_response.json()
        total_tasks = len(todos)
        done_tasks = [task for task in todos if task.get('completed')]
        num_done_tasks = len(done_tasks)

        print(f"Employee {employee_name} is done with tasks "
              f"({num_done_tasks}/{total_tasks}):")
        for task in done_tasks:
            print("\t " + task.get('title'))

    except Exception as e:
        print(f"Error: {e}")
