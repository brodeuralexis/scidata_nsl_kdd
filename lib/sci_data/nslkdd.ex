defmodule Scidata.NSLKDD do
  @moduledoc """
  Module for downloading the [NSL-KDD dataset](https://www.unb.ca/cic/datasets/nsl.html).
  """

  alias Scidata.Utils

  @base_url "https://github.com/brodeuralexis/scidata_nsl_kdd/raw/data-processing/NSL-KDD/"
  @train_features_file "NSL-KDD-Train-Features.gz"
  @train_labels_file "NSL-KDD-Train-Labels.gz"
  @test_features_file "NSL-KDD-Test-Features.gz"
  @test_labels_file "NSL-KDD-Test-Labels.gz"

  @doc """
  Downloads the NSL-KDD training dataset or fetches it locally.
  Returns a tuple of format:
      {{features_binary, features_type, features_shape},
       {labels_binary,   labels_type,   labels_shape}}
  """
  def download do
    {download_features(@train_features_file), download_labels(@train_labels_file)}
  end

  @doc """
  Downloads the NSL-KDD test dataset or fetches it locally.
  """
  def download_test do
    {download_features(@test_features_file), download_labels(@test_labels_file)}
  end

  defp download_features(features_file) do
    data = Utils.get!(@base_url <> features_file).body
    <<n_rows::32, n_features::32, features::binary>> = data
    {features, {:f, 64}, {n_rows, n_features}}
  end

  defp download_labels(labels_file) do
    data = Utils.get!(@base_url <> labels_file).body
    <<n_rows::32, n_labels::32, labels::binary>> = data
    {labels, {:f, 64}, {n_rows, n_labels}}
  end
end
