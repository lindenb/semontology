# Software Evaluation Metrics Ontology (SEMO)

A half-joke project: I want an ontology to annotate my tools, to give the users a clear view of what's under the hood: is it a mature software ? what do I think about it ? etc...

This project contains an OBO/OWL ontology containing a vocabulary to describe my tools. Some transformation exist to convert this ontology into a java `enum` than can be used inside a program.

```java

@Program(
   name="myprogram",
   description="another program"},
   terms=Term.ID_0000027
)
public class MyProgram
 {
(...)
 }
```


# Tree

```
 + comment [ID:0000000]
   + I_have_written_it [ID:0000001]
     - please_do_not_look_at_the_code [ID:0000002]
     - i_use_it_regularly [ID:0000003]
     - i_do_not_remember_why_I_wrote_it [ID:0000004]
     - unmaintained [ID:0000005]
     - pull_requests_welcomed [ID:0000006]
     - i_do_not_accept_pull_requests [ID:0000007]
     + it_was_a_one_shot [ID:0000008]
       + i_wrote_it_for_a_social_network [ID:0000029]
         - i_wrote_it_for_biostars [ID:0000015]
     - i_do_not_understand_how_it_could_work [ID:0000009]
     - i_should_write_some_tests [ID:0000010]
     - i_do_not_understand_my_code [ID:0000011]
     + it_is_deprecated [ID:0000012]
       - better_softwares_exist [ID:0000013]
     - i_would_not_write_it_like_that_now [ID:0000014]
     - i_have_to_used_it_for_years [ID:0000016]
     - just_a_proof_of_concept [ID:0000017]
     - still_in_beta [ID:0000018]
     - autogenerated [ID:0000019]
     - published [ID:0000020]
     + unpublished [ID:0000021]
       - i_should_write_a_paper [ID:0000022]
     - it_is_broken [ID:0000023]
     - documention_is_missing [ID:0000024]
     + documention_exists [ID:0000025]
       - the_code_is_the_documentation [ID:0000026]
       - documentation_is_embbeded [ID:0000027]
     - it_compiles [ID:0000028]
     - my_colleagues_use_it_regularly [ID:0000030]
     - i_should_annotate_this_with_semontology [ID:0000031]

```

# Author

Pierre Lindenbaum PhD @yokofakun Institut du Thorax, Nantes, France.

