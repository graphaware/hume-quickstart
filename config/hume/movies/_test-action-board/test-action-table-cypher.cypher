RETURN 
  'hello' AS name, 
  666 AS number, 
  date('2024-11-05') AS date, 
  "one" AS singleSelect,
  ["one", "two"] AS multiSelect,
  {id: "one", value: "one value"} AS asyncSingle,
  [{id: "one", value: "one"},{id: "two", value:"two"}] AS asyncMulti,
  0.00533243 AS float,
  true AS boolean,
  datetime() AS datetime,
  'Lorem ipsum dolor sit apoc.map.get et ce tera' AS textArea,
  ['one', 'two', 'three'] AS stringList,
  [1, 2, 3] AS numberList
UNION ALL
RETURN 
  'hello2' AS name, 
  667 AS number, 
  date('2024-11-06') AS date, 
  "two" AS singleSelect,
  ["two", "three"] AS multiSelect,
  {id: "two", value: "two value"} AS asyncSingle,
  [{id: "two", value: "two"},{id: "three", value:"three"}] AS asyncMulti,
  0.00633243 AS float,
  false AS boolean,
  datetime() + duration("P1DT1H") AS datetime,
  'Different text for row 2' AS textArea,
  ['two', 'three', 'four'] AS stringList,
  [2, 3, 4] AS numberList
UNION ALL
RETURN 
  'hello3' AS name, 
  668 AS number, 
  date('2024-11-07') AS date, 
  "three" AS singleSelect,
  ["three", "four"] AS multiSelect,
  {id: "three", value: "three value"} AS asyncSingle,
  [{id: "three", value: "three"},{id: "four", value:"four"}] AS asyncMulti,
  0.00733243 AS float,
  true AS boolean,
  datetime() + duration("P2DT2H") AS datetime,
  'Different text for row 3' AS textArea,
  ['three', 'four', 'five'] AS stringList,
  [3, 4, 5] AS numberList
UNION ALL
RETURN 
  'hello4' AS name, 
  669 AS number, 
  date('2024-11-08') AS date, 
  "four" AS singleSelect,
  ["four", "five"] AS multiSelect,
  {id: "four", value: "four value"} AS asyncSingle,
  [{id: "four", value: "four"},{id: "five", value:"five"}] AS asyncMulti,
  0.00833243 AS float,
  false AS boolean,
  datetime() + duration("P3DT3H") AS datetime,
  'Different text for row 4' AS textArea,
  ['four', 'five', 'six'] AS stringList,
  [4, 5, 6] AS numberList
UNION ALL
RETURN 
  'hello5' AS name, 
  670 AS number, 
  date('2024-11-09') AS date, 
  "five" AS singleSelect,
  ["five", "six"] AS multiSelect,
  {id: "five", value: "five value"} AS asyncSingle,
  [{id: "five", value: "five"},{id: "six", value:"six"}] AS asyncMulti,
  0.00933243 AS float,
  true AS boolean,
  datetime() + duration("P4DT4H") AS datetime,
  'Different text for row 5' AS textArea,
  ['five', 'six', 'seven'] AS stringList,
  [5, 6, 7] AS numberList
UNION ALL
RETURN 
  'hello6' AS name, 
  671 AS number, 
  date('2024-11-10') AS date, 
  "six" AS singleSelect,
  ["six", "seven"] AS multiSelect,
  {id: "six", value: "six value"} AS asyncSingle,
  [{id: "six", value: "six"},{id: "seven", value:"seven"}] AS asyncMulti,
  0.01033243 AS float,
  false AS boolean,
  datetime() + duration("P5DT5H") AS datetime,
  'Different text for row 6' AS textArea,
  ['six', 'seven', 'eight'] AS stringList,
  [6, 7, 8] AS numberList
UNION ALL
RETURN 
  'hello7' AS name, 
  672 AS number, 
  date('2024-11-11') AS date, 
  "seven" AS singleSelect,
  ["seven", "eight"] AS multiSelect,
  {id: "seven", value: "seven value"} AS asyncSingle,
  [{id: "seven", value: "seven"},{id: "eight", value:"eight"}] AS asyncMulti,
  0.01133243 AS float,
  true AS boolean,
  datetime() + duration("P6DT6H") AS datetime,
  'Different text for row 7' AS textArea,
  ['seven', 'eight', 'nine'] AS stringList,
  [7, 8, 9] AS numberList
UNION ALL
RETURN 
  'hello8' AS name, 
  673 AS number, 
  date('2024-11-12') AS date, 
  "eight" AS singleSelect,
  ["eight", "nine"] AS multiSelect,
  {id: "eight", value: "eight value"} AS asyncSingle,
  [{id: "eight", value: "eight"},{id: "nine", value:"nine"}] AS asyncMulti,
  0.01233243 AS float,
  false AS boolean,
  datetime() + duration("P7DT7H") AS datetime,
  'Different text for row 8' AS textArea,
  ['eight', 'nine', 'ten'] AS stringList,
  [8, 9, 10] AS numberList
UNION ALL
RETURN 
  'hello9' AS name, 
  674 AS number, 
  date('2024-11-13') AS date, 
  "nine" AS singleSelect,
  ["nine", "ten"] AS multiSelect,
  {id: "nine", value: "nine value"} AS asyncSingle,
  [{id: "nine", value: "nine"},{id: "ten", value:"ten"}] AS asyncMulti,
  0.01333243 AS float,
  true AS boolean,
  datetime() + duration("P8DT8H") AS datetime,
  'Different text for row 9' AS textArea,
  ['nine', 'ten', 'eleven'] AS stringList,
  [9, 10, 11] AS numberList
UNION ALL
RETURN 
  'hello10' AS name, 
  675 AS number, 
  date('2024-11-14') AS date, 
  "ten" AS singleSelect,
  ["ten", "eleven"] AS multiSelect,
  {id: "ten", value: "ten value"} AS asyncSingle,
  [{id: "ten", value: "ten"},{id: "eleven", value:"eleven"}] AS asyncMulti,
  0.01433243 AS float,
  false AS boolean,
  datetime() + duration("P9DT9H") AS datetime,
  'Different text for row 10' AS textArea,
  ['ten', 'eleven', 'twelve'] AS stringList,
  [10, 11, 12] AS numberList
