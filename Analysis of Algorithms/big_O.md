# 📚 Key Properties of Big O Notation
## Big O Definition
Given two functions f(n) and g(n), we say that f(n) is O(g(n)) if there exist constants c > 0 and n0 >= 0 such that f(n) <= c*g(n) for all n >= n0.

In simpler terms, f(n) is O(g(n)) if f(n) grows no faster than c*g(n) for all n >= n0 where c and n0 are constants

## 1. Worst-case analysis
Big O always represents the worst-case scenario.

Example: For linear search, even though sometimes you find the element early, the worst case is going through the whole array → O(n).

## 2. Drop Constants
Big O ignores constants because they don’t matter for large n.

Example:

```
O(3n) → becomes O(n)

O(1000n + 50) → still O(n)
```

## 3. Only the Dominant Term Matters
If you have multiple terms, keep the one that grows fastest.

Example:

```
O(n² + n) → becomes O(n²)

O(n log n + n) → becomes O(n log n)
```

## 4. Multiplicative Rule
If two operations are nested, you multiply their complexities.

Example:

```
for i in range(n):       # O(n)
    for j in range(n):   # O(n)
        print(i, j)
Total = O(n × n) = O(n²)
```
## 5. Additive Rule
If two operations run sequentially, you add their complexities.

Example:

```
for i in range(n):       # O(n)
    print(i)

for j in range(n):       # O(n)
    print(j)
Total = O(n + n) = O(n)
```

## 6. Transitivity
If f(n) = O(g(n)) and g(n) = O(h(n)), then f(n) = O(h(n)).

Example:

```
If an algorithm is O(n) and n = O(n log n) in some comparison, you can also say the algorithm is O(n log n) (though it's looser).
```

## 7. Best, Worst, and Average Cases

| Case	| Description |
| --- | --- |
| O(...) |	Worst-case (Big-O) |
| Ω(...) | 	Best-case (Big-Omega) |
| Θ(...) |	Average-case or tight bound |

But when we say "Big O", we almost always mean worst case.

## 8. Non-deterministic Algorithms
For recursive or random algorithms, complexity may vary.

```
Example: QuickSort has:

Worst: O(n²)

Average: O(n log n) → what we usually report
```

## 🛠️ Practical Tip:
When you analyze any algorithm, ask:

- What operations depend on the input size?
- Are there loops? Nesting?
- What happens in the worst case?

## 📌 Common Big O Complexities (Cheat Sheet)

| Complexity |	Example |
| --- | --- |
| O(1) |	Accessing array element |
| O(log n) |	Binary search |
| O(n) |	Linear search | 
| O(n log n) |	Merge sort, QuickSort (average) |
| O(n²) |	Nested loops (e.g., Bubble Sort) |
| O(2ⁿ) |	Recursion in Fibonacci |
| O(n!) |	Brute-force permutations |
