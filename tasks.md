1. Develop a script that reads all .txt files in a given directory and counts the total number of lines across all files. The script should print the total line count and the line count for each individual file.

1. You want to exchange 400 EUR to CLP (chilean peso) and get 410 EUR after exchanging it back. Write a script which calculates in how
   many days in the last 365 days had exchange rates which would give such return. Exchange rates can be
   downloaded from [here](https://gist.githubusercontent.com/kv109/91185723a2243b4ca3e31a37ce95dac4/raw/34c125738cd0bfbb9384757ef870b1e540bad147/EUR-CLP.json).
   Downloading the data should be part of the script.

1. You want to compare database schema from two different databases: [primary db](https://gist.github.com/kv109/61cb9c6d9cbba392f0340a3083362e5b) and [secondary db](https://gist.github.com/kv109/fa84b9c3d735e90ebcfec63f0c1383d5). 
    Both have the same tables and columns, but the columns definitions might be different. Write a script which outputs the differences.

1. Write a function which organizes files in a directory. You can download files to organize [here](https://github.com/kv109/copilot-workshop-dir-to-organize/archive/refs/heads/main.zip).
```
└── directory-before
    ├── csv.csv
    ├── image1.jpg
    ├── image2.jpg
    ├── text1.txt
    └── text2.txt
```

```
├── directory-after
│   ├── csv
│   │   └── csv.csv
│   ├── jpg
│   │   ├── image1.jpg
│   │   └── image2.jpg
│   └── txt
│       ├── text1.txt
│       └── text2.txt
```

4. Here are [logs from a web server](https://kahoot.slack.com/files/U03F86YLA8L/F076VGG1C7L/logs.csv). 
Write a script which groups those logs by http paths and counts how many times each path was accessed (e.g. /oauth/token => 3, /admin/users =4, etc.).


