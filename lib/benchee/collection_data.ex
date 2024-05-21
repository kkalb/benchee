defmodule Benchee.CollectionData do
  @moduledoc """
  The unified data structure for a given collection of data.

  Consists of the recorded `samples` and the statistics computed from them.
  """

  alias Benchee.Statistics

  defstruct statistics: %Statistics{}, samples: [], org_samples: []

  @typep samples :: [float | non_neg_integer]

  @typedoc """
  Samples and statistics.

  Statistics might only come later when they are computed.
  """
  @type t :: %__MODULE__{
          samples: samples,
          org_samples: samples,
          statistics: Statistics.t()
        }
end
