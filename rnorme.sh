find \( -name "*.h" -o -name "*.c" -o -name "*.cpp" \) -exec norme.py -nocheat -libc {} \; |grep -v "Note: 0"
