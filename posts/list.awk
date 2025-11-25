#!/usr/bin/awk -f
# list.awk - extract date and title from files and print: date<TAB>file<TAB>title
# Usage: awk -f content/posts/list.awk file1 file2 ...

BEGIN {
    # Remove non-regular files from ARGV (uses shell 'test -f') to match original script behavior
    for (i = 1; i < ARGC; i++) {
        cmd = "test -f \"" ARGV[i] "\""
        if (system(cmd) != 0) {
            ARGV[i] = ""
        }
    }
    n = 0
}

# At start of each file: push previous file's data (if any) into arrays
FNR == 1 {
    if (prev_filename != "" && (prev_date != "" || prev_title != "")) {
        n++
        dates[n] = prev_date
        files[n] = prev_filename
        titles[n] = prev_title
    }
    prev_filename = FILENAME
    prev_date = ""
    prev_title = ""
}

/^[[:space:]]*date[[:space:]]*=/ {
    line = $0
    sub(/^[[:space:]]*date[[:space:]]*=[[:space:]]*/, "", line)
    gsub(/^"|"$/, "", line)
    prev_date = line
}

/^[[:space:]]*title[[:space:]]*=/ {
    line = $0
    sub(/^[[:space:]]*title[[:space:]]*=[[:space:]]*/, "", line)
    gsub(/^"|"$/, "", line)
    prev_title = line
}

END {
    if (prev_filename != "" && (prev_date != "" || prev_title != "")) {
        n++
        dates[n] = prev_date
        files[n] = prev_filename
        titles[n] = prev_title
    }

    if (n == 0) exit

    # Build index array
    for (i = 1; i <= n; i++) idx[i] = i

    # Simple insertion sort of idx[] by dates[idx[i]] (lexicographic by date)
    for (i = 2; i <= n; i++) {
        j = i
        while (j > 1 && dates[idx[j-1]] > dates[idx[j]]) {
            tmp = idx[j]
            idx[j] = idx[j-1]
            idx[j-1] = tmp
            j--
        }
    }

    # Print sorted records
    for (i = 1; i <= n; i++) {
        k = idx[i]
        printf "%s\t%s\t%s\n", dates[k], files[k], titles[k]
    }
}
