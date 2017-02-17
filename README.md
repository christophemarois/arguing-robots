# 🤖 Arguing robots 🤖

Arguing robots is a simple CLI utility for macOS that make the wonderfully expressive [PlainTalk](https://www.wikiwand.com/en/PlainTalk) voices of macOS (including beloved *whisper* voice of [Lain's Navi](https://www.wikiwand.com/en/Serial_Experiments_Lain)). It also was my Hello World project for learning [Crystal](https://crystal-lang.org/).

## Requirements

* macOS

## Available voices

Type `say -v '?'` in your terminal to get a list of all voices

## Usage

1. Make a `.txt` containing dialogue lines in the following format: `[voice]: [text]` , like this one:

```
Alex: Hi, how are you doing?
Karen: I'm good! How about you?
Alex: Good. I've been thinking about this city today.
Victoria: Really? How so?
Karen: Oh, Victoria, you're here!
Victoria: Yes, I arrived two minutes ago.
Karen: So what about this city, Alex?
Alex: It's just...
Alex: How Montreal in the winter inspires people to do art.
```

2. Pass the txt as an argument to the CLI:

```
./arguing-robots montreal-in-the-winter.txt
```

3. Hear and watch robots argue

![Lain's Navi](lain_navi.jpg)