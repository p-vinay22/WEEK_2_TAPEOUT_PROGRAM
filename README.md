# 🌟 Week 2 Report – BabySoC Design & Simulation 🚀

---

## 📘 Section 1: Introduction to SoC

A **System-on-Chip (SoC)** integrates multiple components of a computing system into a single chip. This includes:

* 💻 **CPU** – processes instructions.
* 🧠 **Memory** – stores data (RAM for volatile storage, ROM/Flash for permanent storage).
* 📡 **Peripherals** – handle I/O communication.
* 🔗 **Interconnect** – links all components.

✨ **Advantages:** reduced size, lower power usage, faster communication.

🍼 **BabySoC** is a simplified SoC model that helps learners understand core concepts without unnecessary complexity.

---

## ⚙️ Section 2: Importance of Functional Modelling

Functional modelling allows designers to:

* ✅ Validate design logic before hardware implementation.
* 🛑 Detect errors early.
* 🔄 Improve efficiency through rapid iteration.

**🛠️ Tools Used:**

* 🖥️ Icarus Verilog (`iverilog`) for compilation.
* 📊 GTKWave for waveform visualization.

---

## 🛠️ Section 3: Practical Workflow

### 🎯 Objectives

* Understand the BabySoC architecture.
* Simulate the system to verify functionality.

### 📝 Methodology

1️⃣ Clone the BabySoC repository.
2️⃣ Compile Verilog files.
3️⃣ Run simulations to produce `.vcd` waveform files.
4️⃣ View results using GTKWave.
5️⃣ Record observations.

### 💻 Commands

```bash
git clone https://github.com/manili/VSDBabySoC.git
cd VSDBabySoC/src/module/rvmyth
iverilog -o rvmyth.out rvmyth.v testbench.v
./rvmyth.out
gtkwave tb_mythcore_test.vcd
```

---

## ⚠️ Section 4: Challenges and Solutions

| ❌ Error             | 🔍 Cause              | ✅ Solution                                   |
| ------------------- | --------------------- | -------------------------------------------- |
| Missing `.vcd` file | Missing dump commands | Add `$dumpfile` and `$dumpvars` in testbench |
| Module redefinition | Duplicate includes    | Ensure unique module inclusion               |
| GTKWave not opening | Wrong environment     | Exit yosys shell, run GTKWave from terminal  |

---

## 📂 Section 5: Project Overview

**Structure:**

```
Week2/
├── src/module/
│   ├── rvmyth.v 🖥️
│   └── testbench.v 🧪
├── src/include/my_macros.vh 📝
├── output/pre_synth_sim/
│   └── rvmyth.vcd 💾
├── screenshots/
│   ├── reset.png ⏱️
│   ├── clock.png 🕒
│   └── dataflow.png 🔀
├── week2_simulation_log.txt 📄
└── README.md 📘
```

---

## 📊 Section 6: Simulation Insights

* ⏱️ **Reset & Clock:** Verified signal initialization and timing behavior.
* 🔀 **Dataflow:** Confirmed accurate signal transfer between modules.

📸 Screenshots captured for each observation.

---

## 🏆 Section 7: Summary of Achievements

* 📚 Solidified understanding of SoC fundamentals.
* 🖥️ Performed functional modelling of BabySoC.
* 📊 Successfully generated and analyzed waveforms.
* 📝 Documented the process with screenshots and explanations.

💡 **Final Note:** This hands-on experience bridges theoretical knowledge and practical application, preparing for advanced SoC design stages.
