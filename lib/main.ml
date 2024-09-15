let get_config_filename: string =
  try
    let path = Sys.getenv "CONFIG" in
    path
  with Not_found ->
    "websites.yaml"

let main () =
  let websites = get_config_filename |> Config.get_websites_from_file in
  let first_website = List.hd websites in
  print_endline first_website.url
