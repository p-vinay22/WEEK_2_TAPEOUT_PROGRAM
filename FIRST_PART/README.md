# 📘 Week 2 – Part 1: Fundamentals of SoC Design

### 🤔 Understanding System-on-Chip (SoC)

A **System-on-Chip (SoC)** is an integrated circuit that consolidates all components of a computer or electronic system into a single chip.
An SoC typically includes a **CPU (processor core)**, **memory modules**, **I/O peripherals**, and an **interconnect network** for component communication.
By integrating these, SoCs achieve **🔹 reduced size**, **🔹 lower power consumption**, and **🔹 improved performance**, making them ideal for embedded systems, smartphones, IoT devices, and compact computing platforms.

---

### 🛠 Components of a Typical SoC

A typical SoC includes:

1. **💻 CPU (Central Processing Unit)**
   The brain of the SoC, executing instructions and controlling operations.

2. **🧠 Memory**
   Includes volatile memory (**RAM**) for temporary storage and non-volatile memory (**ROM, flash**) for persistent storage.

3. **📡 Peripherals**
   Interfaces for external device communication — e.g., UART, SPI, I²C, GPIO, timers.

4. **🔗 Interconnect**
   The communication fabric (bus or Network-on-Chip) linking CPU, memory, and peripherals.

---

### 🍼 Why BabySoC is Important

**BabySoC** is a simplified model of an SoC designed for learning purposes.
It abstracts the complexity of modern SoCs while retaining essential concepts such as CPU operation, memory access, and peripheral interaction.
By working with BabySoC, learners can focus on understanding the architecture and functional flow of SoCs without getting lost in intricate design details.

---

### ⚙️ Role of Functional Modelling

Functional modelling is a critical stage in SoC design that comes **before RTL and physical design**. Its purposes include:

* ✅ **Verifying functionality** — ensuring the design works conceptually before hardware implementation.
* 🛑 **Identifying design flaws early** — reducing costly mistakes later.
* 🔄 **Enabling faster iteration** — allowing easier changes at a higher abstraction level.

Tools such as **Icarus Verilog** and **GTKWave** make functional modelling accessible, enabling designers to simulate and verify SoC functionality before moving to detailed design stages.

---

### 🎯 Conclusion

Understanding SoC fundamentals is essential for embedded systems design. **BabySoC** serves as an excellent educational model, bridging the gap between theory and practice.
Functional modelling offers a safe and efficient approach to validating SoC designs, making it a critical step in mastering SoC development.
