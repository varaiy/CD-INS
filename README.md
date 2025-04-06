# 🧮 Arithmetic Expression Simulator — `x^2 - x + 1`

This project simulates a simple arithmetic operation using **Lex (Flex)** in **C** to tokenize and evaluate the custom expression:

z = x^2 - x + 1

yaml
Copy
Edit

When provided with a value of `x` through input like `x3 compute`, the program computes the result and simulates assembly-like code generation.

---

## 📁 Project Structure

| File         | Description                           |
|--------------|---------------------------------------|
| `lex_code.l` | Lexical analyzer (Flex) source code   |
| `README.md`  | Project documentation                 |

---

## ⚙️ Requirements

- `gcc` — GNU Compiler Collection  
- `flex` — Fast lexical analyzer generator  
- `make` — Build automation tool (optional)

---

## 💻 Setup Instructions

### 🪟 Windows (MSYS2)

Open **MSYS2 terminal** and run:

```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc flex make
🐧 Linux / Ubuntu
bash
Copy
Edit
sudo apt update
sudo apt install gcc flex make
🔧 Build Instructions
To compile the program, run:

bash
Copy
Edit
flex lex_code.l
gcc lex.yy.c -o simulate -lm
🚀 How to Run
Execute the compiled program:

bash
Copy
Edit
./simulate
Then provide input like:

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
For input x3, the calculation is:

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
Register Usage
r1 = x

r2 = x * x

r3 = x² - x

r4 = x² - x + 1

r5 = constant 1

r6 = final result (z)

👨‍💻 Author
Kumar Varaiy
📜 Roll Number: 23115051
🎓 B.Tech CSE, NIT Raipur
🔗 GitHub: KumarVaraiy

📜 License
Licensed under the MIT License.

💡 Notes
Input must follow the format: x<number> compute

Expression is fixed to x^2 - x + 1

Arithmetic only — no bitwise/logical/shift operations

yaml
Copy
Edit
