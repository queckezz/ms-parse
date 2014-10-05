
export parse

#
# Parse given `ms` into a Dict().
#

function parse (ms::Int)
  qr = divrem(ms, 1000)
  ms = qr[2]

  qr = divrem(qr[1], 60)
  s = qr[2]

  qr = divrem(qr[1], 60)
  m = qr[2]

  qr = divrem(qr[1], 24)
  h = qr[2]
  d = qr[1]

  return [
    "days" => d,
    "hours" => h,
    "minutes" => m,
    "seconds" => s,
    "milliseconds" => ms
  ]
end