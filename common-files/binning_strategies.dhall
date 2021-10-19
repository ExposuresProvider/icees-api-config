let meta = ./meta.dhall

let range_bins = meta.range_bins

let labels_max_cutoff = \ (n : Natural) -> (Natural/fold n (List Text) (\(a : List Text) -> a # [Natural/show (List/length Text a)]) ([] : List Text)) # [">" ++ Natural/show (Natural/subtract n 1)]

let ranges_max_cutoff = \ (n : Natural) -> (Natural/fold (n + 1) (List Double) (\(a : List Double) -> a # [Integer/toDouble (Natural/toInteger (List/length Double a))]) ([] : List Double)) # [Infinity]

let max_cutoff = \ (n : Natural) -> range_bins {
    bins = ranges_max_cutoff n,
    right = False,
    include_lowest = True,
    labels = labels_max_cutoff n
}

let labels_cut = \ (n : Natural) -> (Natural/fold n (List Text) (\(a : List Text) -> a # [Natural/show (List/length Text a + 1)]) ([] : List Text))

in {
   max_cutoff = max_cutoff,
   labels_max_cutoff_labels = labels_max_cutoff,
   labels_cut = labels_cut
}
