[:code.priv_dir(:church_admin), "repo", "seeds", "*.sql"]
|> Path.join()
|> Path.wildcard()
|> Enum.sort()
|> Enum.each(&ChurchAdmin.Repo.SqlScript.execute_file!(ChurchAdmin.Repo, &1))
