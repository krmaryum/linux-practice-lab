#!/bin/bash

# ============================================================
# Linux Practice Lab Setup Script
# ============================================================
# This script creates a hands-on Linux practice environment
# with files, folders, logs, CSV data, scripts, permissions,
# and compression practice data.
# ============================================================

set -e

# ============================================================
# 1. Create Practice Environment
# ============================================================

echo "Creating practice environment..."
mkdir -p ~/linux-practice/{files,logs,scripts,backup,data,users,temp}
echo "Practice environment created at: ~/linux-practice"

# ============================================================
# 2. Create Sample Text Files
# ============================================================

echo "Creating sample text files..."

# employees.txt
cat > ~/linux-practice/files/employees.txt <<EOF_EMPLOYEES
1,John,IT,5000
2,Alice,HR,4500
3,Bob,Finance,6000
4,David,IT,5500
5,Emma,Sales,4000
6,John,IT,5000
EOF_EMPLOYEES

echo "Created: employees.txt"

# fruits.txt
cat > ~/linux-practice/files/fruits.txt <<EOF_FRUITS
apple
banana
orange
mango
banana
apple
grapes
kiwi
EOF_FRUITS

echo "Created: fruits.txt"

# story.txt
cat > ~/linux-practice/files/story.txt <<EOF_STORY
Linux is powerful.
Linux is secure.
Linux is fast.
Practice makes perfect.
Commands are important.
Automation saves time.
EOF_STORY

echo "Created: story.txt"

# numbers.txt
seq 1 20 > ~/linux-practice/files/numbers.txt
echo "Created: numbers.txt"

# ============================================================
# 3. Create CSV Practice File
# ============================================================

echo "Creating CSV file..."

cat > ~/linux-practice/data/students.csv <<EOF_STUDENTS
ID,Name,Marks,City
1,Aman,85,Delhi
2,Rahul,78,Mumbai
3,Priya,92,Pune
4,Neha,88,Chennai
5,Karan,67,Delhi
EOF_STUDENTS

echo "Created: students.csv"

# ============================================================
# 4. Create Log Practice File
# ============================================================

echo "Creating log file..."

cat > ~/linux-practice/logs/system.log <<EOF_LOG
INFO Server started
ERROR Database failed
INFO User login successful
WARNING Disk space low
ERROR Network timeout
EOF_LOG

echo "Created: system.log"

# ============================================================
# 5. Create Empty Files for Wildcard Practice
# ============================================================

echo "Creating empty files..."
touch ~/linux-practice/files/file{1..5}.txt
echo "Created: file1.txt to file5.txt"

# ============================================================
# 6. Create Additional Directories
# ============================================================

echo "Creating additional directories..."
mkdir -p ~/linux-practice/projects
mkdir -p ~/linux-practice/backup/archive
mkdir -p ~/linux-practice/temp/testing
echo "Created: projects, backup/archive, temp/testing"

# ============================================================
# 7. Create Large File for truncate Practice
# ============================================================

echo "Creating large file..."
truncate -s 50M ~/linux-practice/files/bigfile.img
echo "Created: bigfile.img"

# ============================================================
# 8. Create Shell Script Practice File
# ============================================================

echo "Creating hello.sh script..."

cat > ~/linux-practice/scripts/hello.sh <<EOF_HELLO
#!/bin/bash

echo "Hello Linux"
date
whoami
EOF_HELLO

chmod +x ~/linux-practice/scripts/hello.sh
echo "Created and made executable: hello.sh"

# ============================================================
# 9. Create Permission Practice File
# ============================================================

echo "Creating permission practice file..."
touch ~/linux-practice/files/secure.txt
chmod 600 ~/linux-practice/files/secure.txt
echo "Created: secure.txt with 600 permission"
ls -ltr ~/linux-practice/files/secure.txt

# ============================================================
# 10. Create Compression Practice Data
# ============================================================

echo "Creating compression practice data..."
mkdir -p ~/linux-practice/compress_me
touch ~/linux-practice/compress_me/a.txt \
      ~/linux-practice/compress_me/b.txt \
      ~/linux-practice/compress_me/c.txt
echo "Created: compress_me directory with a.txt, b.txt, c.txt"

# ============================================================
# 11. Final Message
# ============================================================

echo ""
echo "Linux practice lab setup completed successfully!"
echo "Go to your lab folder with: cd ~/linux-practice"
echo "Run sample script with: ./scripts/hello.sh"
