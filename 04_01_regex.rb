# Regex 正規表示法

## 取得 index `~=`
'like' =~ /lik/  # > 0

## 比對 `match`
'02/03/2021'.match(/^\d{2}\/\d{2}\/\d{4}$/)  # > if match return <MatchData> if not return nil
'10/03/2021 atest'.match(/^(\d{2})\/(\d{2})\/(\d{4})$/) # > nil

## 取代 `sub`
#### 日期 日月對調
'10/03/2021'.sub(/^(\d{2})\/(\d{2})\/(\d{4})$/, '\2/\1/\3') # > "03/10/2021"
'10/03/2021 test'.sub(/^(\d{2})\/(\d{2})\/(\d{4})$/, '\2/\1/\3') # > no change