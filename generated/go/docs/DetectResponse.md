# DetectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entities** | [**[]DetectedEntity**](DetectedEntity.md) |  | 
**Model** | **string** |  | 
**Ms** | **float32** |  | 
**Runtime** | Pointer to **map[string]interface{}** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

## Methods

### NewDetectResponse

`func NewDetectResponse(entities []DetectedEntity, model string, ms float32, ) *DetectResponse`

NewDetectResponse instantiates a new DetectResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectResponseWithDefaults

`func NewDetectResponseWithDefaults() *DetectResponse`

NewDetectResponseWithDefaults instantiates a new DetectResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntities

`func (o *DetectResponse) GetEntities() []DetectedEntity`

GetEntities returns the Entities field if non-nil, zero value otherwise.

### GetEntitiesOk

`func (o *DetectResponse) GetEntitiesOk() (*[]DetectedEntity, bool)`

GetEntitiesOk returns a tuple with the Entities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntities

`func (o *DetectResponse) SetEntities(v []DetectedEntity)`

SetEntities sets Entities field to given value.


### GetModel

`func (o *DetectResponse) GetModel() string`

GetModel returns the Model field if non-nil, zero value otherwise.

### GetModelOk

`func (o *DetectResponse) GetModelOk() (*string, bool)`

GetModelOk returns a tuple with the Model field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModel

`func (o *DetectResponse) SetModel(v string)`

SetModel sets Model field to given value.


### GetMs

`func (o *DetectResponse) GetMs() float32`

GetMs returns the Ms field if non-nil, zero value otherwise.

### GetMsOk

`func (o *DetectResponse) GetMsOk() (*float32, bool)`

GetMsOk returns a tuple with the Ms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMs

`func (o *DetectResponse) SetMs(v float32)`

SetMs sets Ms field to given value.


### GetRuntime

`func (o *DetectResponse) GetRuntime() map[string]interface{}`

GetRuntime returns the Runtime field if non-nil, zero value otherwise.

### GetRuntimeOk

`func (o *DetectResponse) GetRuntimeOk() (*map[string]interface{}, bool)`

GetRuntimeOk returns a tuple with the Runtime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRuntime

`func (o *DetectResponse) SetRuntime(v map[string]interface{})`

SetRuntime sets Runtime field to given value.

### HasRuntime

`func (o *DetectResponse) HasRuntime() bool`

HasRuntime returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


