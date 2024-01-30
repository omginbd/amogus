{application,ssh_subsystem_fwup,
             [{optional_applications,[]},
              {applications,[kernel,stdlib,elixir,logger,ssh]},
              {description,"Over-the-air updates to Nerves devices via an ssh subsystem"},
              {modules,['Elixir.Mix.Tasks.Firmware.Gen.Script',
                        'Elixir.Mix.Tasks.Upload','Elixir.SSHSubsystemFwup',
                        'Elixir.SSHSubsystemFwup.FwupPort']},
              {registered,[]},
              {vsn,"0.6.1"}]}.
