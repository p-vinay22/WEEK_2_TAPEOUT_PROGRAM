# 📘 BabySoC – Week 2 Functional Modelling

## 📑 Table of Contents

* [🎨 Project Overview](#project-overview)
* [📚 Objective](#objective)
* [🛠 Steps Taken](#steps-taken)
* [💻 Commands Executed](#commands-executed)
* [⚠️ Errors & Fixes](#errors--fixes)
* [🔗 Workflow Diagram](#workflow-diagram)
* [📂 Project Structure](#project-structure)
* [📸 Simulation Results](#simulation-results)
* [📂 Deliverables](#deliverables)
* [🏆 Outcome](#outcome)

---

## 🎨 Project Overview <a name="project-overview"></a>

<div align="center">

# 🚀 BabySoC – Week 2 Functional Modelling

**Learning SoC Fundamentals with BabySoC Simulation**

</div>

---

### 📚 Objective <a name="objective"></a>

> 🎯 Understand **SoC fundamentals** and demonstrate **functional modelling** of BabySoC using simulation tools.
> **Tools Used:**

* 🖥️ **Icarus Verilog** (`iverilog`) → compile Verilog code
* 📊 **GTKWave** → view simulation waveforms

---

### 🛠 Steps Taken <a name="steps-taken"></a>

<details>
<summary>📂 Click to expand</summary>

1. 📥 Clone VSDBabySoC repo
2. ⚡ Compile modules with `iverilog`
3. ▶️ Simulate & generate `.vcd` waveform files
4. 👀 Open `.vcd` in GTKWave
5. 📝 Document observations with screenshots

</details>

---

### 💻 Commands Executed <a name="commands-executed"></a>

<details>
<summary>📜 Click to expand commands</summary>

```bash
# Clone VSDBabySoC repo
git clone https://github.com/manili/VSDBabySoC.git
cd VSDBabySoC/src/module/rvmyth

# Compile Verilog files
iverilog -o rvmyth.out rvmyth.v testbench.v

# Run simulation
./rvmyth.out

# Check VCD file
ls *.vcd

# Open waveform
gtkwave tb_mythcore_test.vcd
```

</details>

---

### ⚠️ Errors & Fixes <a name="errors--fixes"></a>

<details>
<summary>🚨 Click to expand all errors and fixes</summary>

1. **❗ Error:** `tlverilog: command not found`

   * 🔍 **Reason:** TL-Verilog was not installed and not required for Week 2.
   * ✅ **Fix:** Ignored TL-Verilog, used `iverilog` + `gtkwave` instead.

2. **❗ Error:** GTKWave file not opening

   * 🔍 **Reason:** Tried opening file inside yosys shell instead of terminal.
   * ✅ **Fix:** Exit yosys, then run:

     ```bash
     gtkwave tb_mythcore_test.vcd
     ```

3. **❗ Error:** `.vcd file not found` after simulation

   * 🔍 **Reason:** Missing `$dumpfile` and `$dumpvars` in testbench.
   * ✅ **Fix:** Added dump commands in `testbench.v` and re-ran simulation to generate `.vcd` file successfully.

</details>

---

### 🔗 Workflow Diagram <a name="workflow-diagram"></a>

<details>
<summary>📊 Click to expand workflow diagram</summary>

```
📂 testbench.v + rvmyth.v
   ⬇️
⚙️ Compile → rvmyth.out
   ⬇️
▶️ Run simulation
   ⬇️
💾 Generate `.vcd`
   ⬇️
🔍 View in GTKWave
```

**Description:**

* 📂 **Step 1:** Prepare Verilog files (`testbench.v`, `rvmyth.v`)
* ⚙️ **Step 2:** Compile using Icarus Verilog → output `rvmyth.out`
* ▶️ **Step 3:** Run simulation
* 💾 **Step 4:** Generate `.vcd` waveform file
* 🔍 **Step 5:** Open `.vcd` in GTKWave for waveform analysis

</details>

---

### 📂 Project Structure <a name="project-structure"></a>

<details>
<summary>📁 Click to expand project structure details</summary>

```text
Week2/
├── src/module/rvmyth.v
├── src/module/testbench.v
├── src/include/my_macros.vh
├── output/pre_synth_sim/rvmyth.vcd
├── screenshots/week2_reset.png
├── screenshots/week2_clock.png
├── screenshots/week2_dataflow.png
├── week2_simulation_log.txt
└── README.md
```

**Explanation:**

* 🖥️ `rvmyth.v` → RTL design file
* 🧪 `testbench.v` → Testbench file
* 📜 `my_macros.vh` → Macro definitions
* 📂 `.vcd` → Simulation waveform
* 🖼 Screenshots → Reset, clock, dataflow results
* 📄 Logs → Simulation log
* 📘 README → Documentation

</details>

---

### 📸 Simulation Results <a name="simulation-results"></a>

#### 1️⃣ Reset & Clock Operation ⏱️

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/18d679a0-8e80-4966-ac92-0035fec86580" />  
✔ **Explanation:** Reset asserted at start, clock starts after reset deassertion, signals behave as expected.  

#### 2️⃣ Dataflow Between Modules 🔀

<img width="1600" height="900" alt="Image" src="https://github.com/user-attachments/assets/cef40be7-9e2a-4a29-a585-3ba759167cbb" />  
✔ **Explanation:** Data moves correctly between modules, showing functional correctness.  

---

### 📂 Deliverables <a name="deliverables"></a> 📦

* 📄 Simulation logs
* 🖼 Waveform screenshots
* 📝 Explanation per screenshot

---

### 🏆 Outcome <a name="outcome"></a> 🎉

By completing Week 2, I:

* ✅ Understood SoC fundamentals
* ✅ Simulated and verified BabySoC behavior
* ✅ Documented results with screenshots

✨ **End of Week 2 – BabySoC Functional Modelling Journey** 🚀
