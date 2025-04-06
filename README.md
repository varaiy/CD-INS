# 🧮 Arithmetic Expression Simulator — `x^2 - x + 1`

This project is a compiler-like simulation created using **Flex (Lex)** in **C** to tokenize and evaluate the expression:

z = x^2 - x + 1;

yaml
Copy
Edit

It recognizes input value for variable `x`, and when the keyword `compute` is entered, it simulates the operation and generates assembly-like code.

---

## ✨ Features

✅ Parses expressions like: `x3 compute`  
✅ Generates pseudo assembly instructions  
✅ Computes final value of `z`  
✅ Simple arithmetic-only instruction (no bitwise/logical ops)  
✅ Token recognition for compiler design learning  
✅ Interactive input through terminal

---

## 📂 Project Structure

| File         | Description                        |
|--------------|------------------------------------|
| `lex_code.l` | Lexical analyzer to simulate instruction |
| `README.md`  | Project documentation              |

---

## ⚙️ Requirements

- `gcc` – GNU Compiler Collection  
- `flex` – for lexical analysis  

---

## 🖥️ Setup (Windows with MSYS2)

Open MSYS2 terminal and run:

```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc flex make
🐧 Setup (Linux / Ubuntu)
bash
Copy
Edit
sudo apt update
sudo apt install gcc flex make
🔨 Build Instructions
To compile the project:

bash
Copy
Edit
flex lex_code.l
gcc lex.yy.c -o simulate -lm
🚀 How to Run
bash
Copy
Edit
./simulate
Then enter input like:

nginx
Copy
Edit
x3 compute
📝 Example Input
nginx
Copy
Edit
x3 compute
📤 Example Output
vbnet
Copy
Edit
Token: x3 (x = 3.00)
Token: compute (Custom Instruction: x^2 - x + 1)

Assembly Code:
    MUL r2, r1, r1      ; r2 = x * x
    SUB r3, r2, r1      ; r3 = x^2 - x
    ADD r4, r3, r5      ; r4 = r3 + 1
    MOV r6, r4          ; r6 = result

Result: z = 7.00 (stored in r6)
🧠 How It Works
Expression Evaluated:

𝑧
=
𝑥
2
−
𝑥
+
1
z=x 
2
 −x+1
For input: x3, the calculation is:

𝑧
=
3
2
−
3
+
1
=
9
−
3
+
1
=
7
z=3 
2
 −3+1=9−3+1=7
🧾 Assembly Instructions Used
Instruction	Description
MUL	Multiplies two registers
SUB	Subtracts two registers
ADD	Adds two registers
MOV	Moves result to output
Registers:

r1 = x

r2 = x * x

r3 = x² - x

r4 = x² - x + 1

r5 = constant 1

r6 = final result holder

✍️ Author
Kumar Varaiy
🎓 Roll Number: 23115051
💻 B.Tech CSE, NIT Raipur
🔗 GitHub: KumarVaraiy

📜 License
Licensed under the MIT License.

💡 Notes
Input format must be like x<number> followed by compute

Currently only supports basic arithmetic (no powers/logicals directly)

Expression is hardcoded to x^2 - x + 1
