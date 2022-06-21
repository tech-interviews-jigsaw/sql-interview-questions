
import sqlite3
conn = sqlite3.connect('./moes_bar.db')
cursor = conn.cursor()

def list_tables():
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    return cursor.fetchall()

def show_schema(table):
    cursor.execute(f"pragma table_info({table})")
    return cursor.fetchall()

def name_of_youngest_customer():
    pass

def drinks_from_most_to_least_expensive():
    pass

def most_expensive_drink_bart_ordered():
    pass

def moes_customers():
    pass

def customers_by_profit():
    pass
