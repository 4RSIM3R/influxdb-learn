from(bucket: "noaa")
    |> range(start: -7d, stop: 7d) // range(start: -7d, stop: now())
    |> filter(fn: (r) => r["_measurement"] == "average_temperature")
    |> filter(fn: (r) => r["_field"] == "degrees")
    |> filter(fn: (r) => r["location"] == "santa_monica")
    |> aggregateWindow(every: 5m, fn: mean) // aggregate and windowing
