
import pandas as pd
from pathlib import Path

# Project dataset folder
project_folder = Path(__file__).resolve().parent.parent
dataset_folder = project_folder / "dataset"

# Load original dataset
input_file = dataset_folder / "listings.csv"

df = pd.read_csv(input_file)

# Basic dataset information
print("Dataset Shape:", df.shape)
print("\nFirst 5 Rows:")
print(df.head())

print("\nColumn Names:")
print(df.columns.tolist())

print("\nMissing Values:")
print(df.isnull().sum())

# Check duplicates
print("\nDuplicate Rows:", df.duplicated().sum())

# Remove duplicate rows
df = df.drop_duplicates()

# Clean price column
if "price" in df.columns:
    df["price"] = (
        df["price"]
        .astype(str)
        .str.replace("$", "", regex=False)
        .str.replace(",", "", regex=False)
    )
    df["price"] = pd.to_numeric(df["price"], errors="coerce")

# Dataset after cleaning
print("\nCleaned Dataset Shape:", df.shape)
print("\nPrice Summary:")
print(df["price"].describe())

# Save cleaned dataset
output_file = dataset_folder / "listings_cleaned.csv"
df.to_csv(output_file, index=False)

print("\nCleaned dataset saved successfully!")
