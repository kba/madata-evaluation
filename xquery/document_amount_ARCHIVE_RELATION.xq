declare default element namespace "http://eprints.org/ep2/data/2.0";

<data>{
for $eprint in //eprint[eprint_status = "archive"]
let $nr_docs := count($eprint//document[relation]//file)
group by $nr_docs
order by $nr_docs
return <count nr_docs="{$nr_docs}">
{count($eprint/eprintid)}
</count>
}</data>