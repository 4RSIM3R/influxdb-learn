import "csv"
import "http/requests"

response = requests.get(url: "https://influx-testdata.s3.amazonaws.com/noaa.csv")

relativeToNow = (tables=<-) => tables
    |> elapsed()
    |> sort(columns: ["_time"], desc: true)
    |> cumulativeSum(columns: ["elapsed"])
    |> map(fn: (r) => ({r with _time: time(v: int(v: now()) - r.elapsed * 1000000000)}))
csv.from(csv: string(v: response.body))
    |> relativeToNow()
    |> limit(n: 100)
    |> to(bucket: "noaa")