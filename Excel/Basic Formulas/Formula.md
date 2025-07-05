# Common Formulas

## **1️⃣ Total (SUM)**

**Purpose:** Adds up numbers in a range.
**Syntax:** `=SUM(number1, [number2], ...)`
**Example:**
`=SUM(A1:A10)` → Adds all numbers from A1 to A10.

---

## **2️⃣ IF**

**Purpose:** Tests a condition — returns one value if *TRUE*, another if *FALSE*.
**Syntax:** `=IF(logical_test, value_if_true, value_if_false)`
**Example:**
`=IF(A1>50, "Pass", "Fail")` → If A1 is greater than 50, returns *Pass*, else *Fail*.

---

## **3️⃣ IF + AND**

**Purpose:** Combines IF with multiple conditions — all must be *TRUE* for the IF to return the *TRUE* result.
**Syntax:** `=IF(AND(condition1, condition2), value_if_true, value_if_false)`
**Example:**
`=IF(AND(A1>50, B1<100), "OK", "Not OK")`
→ If A1 is over 50 *and* B1 is under 100, returns *OK*, else *Not OK*.

---

## **4️⃣ VLOOKUP**

**Purpose:** Looks up a value *vertically* in the first column of a table and returns a value in the same row from a specified column.
**Syntax:** `=VLOOKUP(lookup_value, table_array, col_index_num, [range_lookup])`
**Example:**
`=VLOOKUP(A1, D1:F10, 3, FALSE)`
→ Looks for A1 in column D, finds a match, then returns the value in the 3rd column of that row (column F).

---

## **5️⃣ HLOOKUP**

**Purpose:** Looks up a value *horizontally* in the first row of a table and returns a value from a specified row in the same column.
**Syntax:** `=HLOOKUP(lookup_value, table_array, row_index_num, [range_lookup])`
**Example:**
`=HLOOKUP(A1, A1:J3, 2, FALSE)`
→ Looks for A1 in row 1, finds a match, returns value from the 2nd row of that column.

---

## **6️⃣ MATCH**

**Purpose:** Returns the *position* of a value in a range.
**Syntax:** `=MATCH(lookup_value, lookup_array, [match_type])`
**Example:**
`=MATCH("Apple", A1:A10, 0)`
→ Finds *Apple* in A1\:A10 and returns its position (e.g., 3 means it’s in the 3rd cell of the range).

---

## **7️⃣ INDEX**

**Purpose:** Returns the value at a given row & column in a table/range.
**Syntax:** `=INDEX(array, row_num, [column_num])`
**Example:**
`=INDEX(A1:C5, 2, 3)`
→ Returns the value in row 2, column 3 of the range A1\:C5.

---

## **8️⃣ INDEX + MATCH**

**Purpose:** A powerful alternative to VLOOKUP. INDEX gets the value, MATCH finds the position.
**Example:**

```
=MATCH("Apple", A1:A10, 0) → gives position
=INDEX(B1:B10, MATCH("Apple", A1:A10, 0))
```

→ Looks for *Apple* in A1\:A10, finds its row, then returns the value in the same row from B1\:B10.

---

## **9️⃣ COLUMN**

**Purpose:** Returns the column number of a reference.
**Syntax:** `=COLUMN([reference])`
**Example:**
`=COLUMN(A1)` → Returns 1.
`=COLUMN(C5)` → Returns 3.

---

## **🔟 COLUMNS**

**Purpose:** Returns the number of columns in a range.
**Syntax:** `=COLUMNS(array)`
**Example:**
`=COLUMNS(A1:C10)` → Returns 3.

---

## **1️⃣1️⃣ HLOOKUP With Exact Match**

**Purpose:** Use `FALSE` for an exact match.
**Example:**
`=HLOOKUP("Math", A1:Z2, 2, FALSE)`
→ Looks for *Math* in row 1, returns value in row 2 of the same column.

---

## **1️⃣2️⃣ HLOOKUP With Cell Reference**

**Example:**
`=HLOOKUP(B1, A1:Z2, 2, FALSE)`
→ Uses value in B1 as lookup value.

---

## **1️⃣3️⃣ HLOOKUP With IF**

**Purpose:** Combine to check a condition.
**Example:**
`=IF(HLOOKUP(B1, A1:Z2, 2, FALSE)>50, "Pass", "Fail")`
→ Looks up score and checks if it’s greater than 50.

---

## **1️⃣4️⃣ HLOOKUP With MATCH**

**Purpose:** Use MATCH to dynamically find the row number.
**Example:**
`=HLOOKUP("Math", A1:Z10, MATCH("Marks", A1:A10, 0), FALSE)`
→ Looks for *Math* in row 1, returns the value from the row where *Marks* is found.

---

## **1️⃣5️⃣ Dynamic with Rows (INDEX + MATCH Example)**

**Purpose:** Use INDEX + MATCH to make row or column numbers dynamic.
**Example:**
`=INDEX(B2:D10, MATCH("John", A2:A10, 0), MATCH("Math", B1:D1, 0))`
→ Finds *John* in A2\:A10 → finds *Math* in B1\:D1 → returns their intersection.

---

### **Note**

* **MATCH** helps make your lookups *dynamic*.
* **INDEX + MATCH** is more flexible than VLOOKUP/HLOOKUP because you’re not limited to left-to-right lookups.
* Exact match lookups: always use `FALSE` as the last argument.
