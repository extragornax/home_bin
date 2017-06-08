find \( -name "*.h" -o -name "*.c" \) -exec norme.py -nocheat -libc {} \; |grep -v "Note: 0"
