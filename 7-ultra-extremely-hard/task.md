### Part one

`/urls` directory contains encrypted CSV files, which contains URL and word number. Example (after decryption):
```csv
https://api.magicthegathering.io/v1/cards/129671;3
```
Those files are encrypted with the following function:
```ruby
def encrypt(string, key)
  cipher = OpenSSL::Cipher.new('AES-256-CBC')
  cipher.encrypt
  cipher.key = Digest::SHA256.digest(key)
  iv = cipher.random_iv
  encrypted = cipher.update(string) + cipher.final
  Base64.encode64(iv + encrypted).gsub("\n", '')
end
```
Files are encrypted with one of the keys from the list you can download [here](LINK). 
A key is required to decrypt the file. You don't know which one is it, so you need to do some brute-forcing!

### Part two

URLs will return JSON files with the following structure (see [example](https://api.magicthegathering.io/v1/cards/129671)):

```json
{
  "card": {
    "_comment": "...some other keys...",
    "flavor": "\"The Ancestor protects us in ways we can't begin to comprehend.\"\n—Mystic elder"
  }
}
```
You need to fetch the `flavor` key from each JSON file and find the word number from the CSV file. E.g. if it's 4, it means that it's a word number four.
Note: expressions like "it's" counts as one word.

### Summary

1. Decrypt each file from the list.
2. Each file contains URL and a word number. Fetch the JSON from each URL.
3. Those JSONs contain `flavor` key. Fetch its value.
4. Take the "word number" from the CSV file and find the word in the `flavor` string. E.g. if it's 4, it means that it's a word number four.
5. Those word will form a sentence. Find the sentence!