#!/usr/bin/python3
"""
Gather data from an API and export to JSON
"""
import json
import requests


if __name__ == "__main__":
    base_url = 'https://jsonplaceholder.typicode.com'
    users_response = requests.get(f'{base_url}/users')
    todos_response = requests.get(f'{base_url}/todos')

    try:
        users = users_response.json()
        todos = todos_response.json()
        data = {}
        for user in users:
            employee_id = user.get('id')
            employee_name = user.get('username')
            tasks = [task for task in todos if task.get('userId') == employee_id]
            data[employee_id] = []
            for task in tasks:
                data[employee_id].append({
                    "username": employee_name,
                    "task": task.get('title'),
                    "completed": task.get('completed')
                })

        with open('todo_all_employees.json', mode="w") as file:
            json.dump(data, file)

    except Exception as e:
        print(f"Error: {e}")
