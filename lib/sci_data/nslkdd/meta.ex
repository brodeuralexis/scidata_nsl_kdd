defmodule Scidata.NSLKDD.Meta do
  @moduledoc """
  A module containing metadata about the NSL-KDD dataset.
  """

  @fields [
    :duration,
    :protocol_type,
    :service,
    :flag,
    :src_bytes,
    :st_bytes,
    :land,
    :wrong_fragment,
    :urgent,
    :hot,
    :num_failed_logins,
    :logged_in,
    :num_compromised,
    :root_shell,
    :su_attempted,
    :num_root,
    :num_file_creations,
    :num_shells,
    :num_access_files,
    :num_outbound_cmds,
    :hot_login?,
    :guest_login?,
    :count,
    :srv_count,
    :serror_rate,
    :srv_serror_rate,
    :rerror_rate,
    :srv_rerror_rate,
    :same_srv_rate,
    :diff_srv_rate,
    :srv_diff_host_rate,
    :dst_host_count,
    :dst_host_srv_count,
    :dst_host_same_srv_rate,
    :dst_host_diff_srv_rate,
    :dst_host_same_src_port_rate,
    :dst_host_srv_diff_host_rate,
    :dst_host_serror_rate,
    :dst_host_srv_serror_rate,
    :dst_host_rerror_rate,
    :dst_host_srv_rerror_rate,
    :class,
    :difficulty_level
  ]

  @protocol_types %{
    "tcp" => 1,
    "udp" => 2,
    "icmp" => 3
  }

  @services %{
    "private" => 1,
    "ftp_data" => 2,
    "eco_i" => 3,
    "telnet" => 4,
    "http" => 5,
    "smtp" => 6,
    "ftp" => 7,
    "ldap" => 8,
    "pop_3" => 9,
    "courier" => 10,
    "discard" => 11,
    "ecr_i" => 12,
    "imap4" => 13,
    "domain_u" => 14,
    "mtp" => 15,
    "systat" => 16,
    "iso_tsap" => 17,
    "other" => 18,
    "csnet_ns" => 19,
    "finger" => 20,
    "uucp" => 21,
    "whois" => 22,
    "netbios_ns" => 23,
    "link" => 24,
    "Z39_50" => 25,
    "sunrpc" => 26,
    "auth" => 27,
    "netbios_dgm" => 28,
    "uucp_path" => 29,
    "vmnet" => 30,
    "domain" => 31,
    "name" => 32,
    "pop_2" => 33,
    "http_443" => 34,
    "urp_i" => 35,
    "login" => 36,
    "gopher" => 37,
    "exec" => 38,
    "time" => 39,
    "remote_job" => 40,
    "ssh" => 41,
    "kshell" => 42,
    "sql_net" => 43,
    "shell" => 44,
    "hostnames" => 45,
    "echo" => 46,
    "daytime" => 47,
    "pm_dump" => 48,
    "IRC" => 49,
    "netstat" => 50,
    "ctf" => 51,
    "nntp" => 52,
    "netbios_ssn" => 53,
    "tim_i" => 54,
    "supdup" => 55,
    "bgp" => 56,
    "nnsp" => 57,
    "rje" => 58,
    "printer" => 59,
    "efs" => 60,
    "X11" => 61,
    "ntp_u" => 62,
    "klogin" => 63,
    "tftp_u" => 64,
    "red_i" => 65,
    "urh_i" => 66,
    "http_8001" => 67,
    "aol" => 68,
    "http_2784" => 69,
    "harvest" => 70
  }

  @flags %{
    "REJ" => 1,
    "SF" => 2,
    "RSTO" => 3,
    "S0" => 4,
    "RSTR" => 5,
    "SH" => 6,
    "S3" => 7,
    "S2" => 8,
    "S1" => 9,
    "RSTOS0" => 10,
    "OTH" => 11
  }

  @classes %{
    "normal" => 1,
    "neptune" => 2,
    "warezclient" => 3,
    "ipsweep" => 4,
    "portsweep" => 5,
    "teardrop" => 6,
    "nmap" => 7,
    "satan" => 8,
    "smurf" => 9,
    "pod" => 10,
    "back" => 11,
    "guess_passwd" => 12,
    "ftp_write" => 13,
    "multihop" => 14,
    "rootkit" => 15,
    "buffer_overflow" => 16,
    "imap" => 17,
    "warezmaster" => 18,
    "phf" => 19,
    "land" => 20,
    "loadmodule" => 21,
    "spy" => 22,
    "perl" => 23,
    "saint" => 24,
    "mscan" => 25,
    "apache2" => 26,
    "snmpgetattack" => 27,
    "processtable" => 28,
    "httptunnel" => 29,
    "ps" => 30,
    "snmpguess" => 31,
    "mailbomb" => 32,
    "named" => 33,
    "sendmail" => 34,
    "xterm" => 35,
    "worm" => 36,
    "xlock" => 37,
    "xsnoop" => 38,
    "sqlattack" => 39,
    "udpstorm" => 40
  }

  @doc """
  The fields present in the NSL-KDD dataset.
  """
  def fields do
    @fields
  end

  @doc """
  If given an atom, returns the index of the field.
  If given an index, returns the name of the field.
  """
  for {index, value} <- Enum.with_index(@fields) do
    def field(unquote(index)), do: unquote(value)
    def field(unquote(value)), do: unquote(index)
  end

  @doc """
  The list of all protocol types in the NSL-KDD dataset.
  """
  def protocol_types do
    Enum.map(@protocol_types, &elem(&1, 0))
  end

  @doc """
  If given an integer, returns the string value of the protocol type.
  If given a string, returns the integer value of the protocol type.
  """
  for {index, value} <- @protocol_types do
    def protocol_type(unquote(index)), do: unquote(value)
    def protocol_type(unquote(value)), do: unquote(index)
  end

  @doc """
  The list of all services in the NSL-KDD dataset.
  """
  def services do
    Enum.map(@services, &elem(&1, 0))
  end

  @doc """
  If given an integer, returns the string value of the service.
  If given a string, returns the integer value of the service.
  """
  for {index, value} <- @services do
    def service(unquote(index)), do: unquote(value)
    def service(unquote(value)), do: unquote(index)
  end

  @doc """
  The list of all flags in the NSL-KDD dataset.
  """
  def flags do
    Enum.map(@flags, &elem(&1, 0))
  end

  @doc """
  If given an integer, returns the string value of the flag.
  If given a string, returns the integer value of the flag.
  """
  for {index, value} <- @flags do
    def flag(unquote(index)), do: unquote(value)
    def flag(unquote(value)), do: unquote(index)
  end

  def classes do
    Enum.map(@classes, &elem(&1, 0))
  end

  @doc """
  If given an integer, returns the string value of the class.
  If given a string, returns the integer value of the class.
  """
  for {index, value} <- @classes do
    def class(unquote(index)), do: unquote(value)
    def class(unquote(value)), do: unquote(index)
  end
end
