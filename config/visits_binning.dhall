let labels = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    ">9"
]
let method = {
    bins = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, Infinity],
    right = False,
    include_lowest = True,
    labels = labels
}
in {
    labels = labels,
    method = method
}